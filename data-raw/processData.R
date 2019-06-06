
options(stringsAsFactors = FALSE)

level <- c(0, 1, 2, 3)
link <- c("https://data.humdata.org/dataset/503a9167-ba56-4174-b160-bdb0fb703719/resource/080ad3f1-103e-4309-9476-332214f324c7/download/civ_admbnda_adm0_cntig_20180706.zip",
          "https://data.humdata.org/dataset/503a9167-ba56-4174-b160-bdb0fb703719/resource/5f5d6729-d02f-4031-9712-1ffb903b2dd0/download/civ_admbnda_adm1_cntig_ocha_itos_20180706.zip",
          "https://data.humdata.org/dataset/503a9167-ba56-4174-b160-bdb0fb703719/resource/9cb9e591-cd37-417c-aac8-e2ccc344da8e/download/civ_admbnda_adm2_cntig_ocha_itos_20180706.zip",
          "https://data.humdata.org/dataset/503a9167-ba56-4174-b160-bdb0fb703719/resource/07ff93d9-b804-4db5-9f71-560809233e48/download/civ_admbnda_adm3_cntig_ocha_itos_20180706.zip")

steer <- data.frame(level, url = link)

usethis::use_data(steer, internal = TRUE, overwrite = TRUE)

rm(level, link, steer)
