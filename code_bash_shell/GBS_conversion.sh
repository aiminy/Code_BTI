
#for i in {2..955691}
#do
 
#paste <(nl "WEMA GBS 1008.hmp.txt" | sed -n "$i","$i"p | cut -f1-3) <(sed -n "$i","$i"p "WEMA GBS 1008.hmp.txt" | c#ut -f12-110 | tr "\t" "\n" | sort -u | awk '{printf("%s\t",$0)} END {print ""}')


#done


#while read line; do

#paste <(echo "$line" | cut -f1) <(echo "$line" | cut -f2- | tr "\t" "\n" | sort -u | awk '{printf("%s\t",$0)} END {print ""}')

#done < $1

#cut -f2 WEMA_GBS_1008_hmp_maker6.txt | awk '{split($0,numbers,"/")} {print numbers[1],numbers[2],numbers[3],numbe#rs[4]}'

cut -f2 WEMA_GBS_1008_hmp_maker6.txt | awk '{n=split($0,numbers,"/")} {for(i=1;i<=n;i++) print numbers[i]}' 



#numbers2=($(for each in ${numbers[@]}; do echo $each; done | sort))} {print numbers2[1],numbers2[2]}' 


#phonetic_alpha=($(for each in ${phonetic_alpha[@]}; do echo $each; done | sort))
       


#readarray -t eCollection < <(cut -f2 WEMA_GBS_1008_hmp_maker6.txt) | printf '%s\n' "${eCollection[0]}"


#array=(C G A T - NA /)

#readarray -t sorted < <(for a in "${array[@]}"; do echo "$a"; done | sort)

#readarray -t sorted < <(printf '%s\0' "${array[@]}" | sort -z | xargs -0n1)
#for a in "${sorted[@]}"; do echo "$a"; done

#cut -f2 WEMA_GBS_1008_hmp_maker6.txt | awk '{split($0,array,"/");printf '%s\0' "${array[@]}"}'

#for a in "${sorted[@]}"; do echo "$a"; done   



paste <(tail -n +2 "WEMA GBS 1008.hmp.txt" | cut -f1,2) <(awk -F"\t" '{ print $1,$2,$3,$4,$5 }' WEMA_GBS_1008_hmp_locus_allele.txt) | more

cut -f1- WEMA_GBS_1008_hmp_maker3.txt

paste 

vi WEMA_GBS_1008_hmp_maker6.txt

paste <(awk -F"\t" '{OFS="\t";print $1,$2}' WEMA_GBS_1008_hmp_maker6.txt) <(awk -F"\t" '{OFS="\t"; print $2,$5 }' WEMA_GBS_1008_hmp_locus_allele.txt) <(cut -f1- WEMA_GBS_1008_hmp_maker3.txt)

awk -F"\t" '{OFS="\t";print $1,$2,$3,$4,$5 }' WEMA_GBS_1008_hmp_locus_allele.txt | more


