group = %w[A B C D E F]

group1 = group.sample(rand(2..4)).sort
group2 = group - group1

p group1
p group2
