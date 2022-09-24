base_dir='';
annotation_path=strcat(base_dir, '/Annotations');
image_path=strcat(base_dir, '/Tissue Images');
files = dir(strcat(annotation_path,'/*.xml'));
for file = files'
    splitted = split(file.name, '.');
    he_to_binary_mask_final(base_dir, string(splitted(1)))
end