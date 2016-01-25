# store the current directory
initial.dir <- getwd()

# load the dataset
supervisor_pacemaker <- read.csv("~/Desktop/supervisor_pacemaker.csv")

## generate random values for each column
## memorypercent <- supervisor_pacemaker$memory_percent
## rss <- supervisor_pacemaker$rss
## vms <- supervisor_pacemaker$vms
## bytessent <- supervisor_pacemaker$bytes_sent
## bytesrecv <- supervisor_pacemaker$bytes_recv
## packetssent <- supervisor_pacemaker$packets_sent
## packetsrecv <- supervisor_pacemaker$packets_recv
## errin <- supervisor_pacemaker$errin
## errout <- supervisor_pacemaker$errout
## dropout <- supervisor_pacemaker$dropout
## readcount <- supervisor_pacemaker$read_count
## writecount <- supervisor_pacemaker$write_count
## readbytes <- supervisor_pacemaker$read_bytes
## writebytes <- supervisor_pacemaker$write_bytes
## cpupercent <- supervisor_pacemaker$cpu_percent
## numfds <- supervisor_pacemaker$num_fds
## numvoluntary <- supervisor_pacemaker$num_ctx_switchesVoluntary
## numinvoluntary <- supervisor_pacemaker$num_ctx_switchesInvoluntary

memorypercent <- runif(length(supervisor_pacemaker$memory_percent),3.243,3.7777)
rss <- runif(length(supervisor_pacemaker$rss),287784960,287984960)
vms <- runif(length(supervisor_pacemaker$vms),3779375104,3879375104)
bytessent <- runif(length(supervisor_pacemaker$bytes_sent),1181099830,1191099830)
bytesrecv <- runif(length(supervisor_pacemaker$bytes_recv),1230003989,1240003989)
packetssent <- runif(length(supervisor_pacemaker$packets_sent),5370506,5570506)
packetsrecv <- runif(length(supervisor_pacemaker$packets_recv),5375254,5875254)
readcount <- runif(length(supervisor_pacemaker$read_count),17456552,18956552)
writecount <- runif(length(supervisor_pacemaker$write_count),2382550,2582550)
readbytes <- runif(length(supervisor_pacemaker$read_bytes),4505600,4805600)
writebytes <- runif(length(supervisor_pacemaker$write_bytes),250619392,290619392)
numfds <- runif(length(supervisor_pacemaker$num_fds),52,54)

## memorypercent <- order(memorypercent)
## rss <- order(rss)

supervisor_pacemaker$memory_percent <- memorypercent
supervisor_pacemaker$rss <- rss
supervisor_pacemaker$vms <- vms
supervisor_pacemaker$bytes_sent <- bytessent
supervisor_pacemaker$bytes_recv <- bytesrecv
supervisor_pacemaker$packets_sent <- packetssent
supervisor_pacemaker$packets_recv <- packetsrecv
supervisor_pacemaker$read_count <- readcount
supervisor_pacemaker$write_count <- writecount
supervisor_pacemaker$read_bytes <- readbytes
supervisor_pacemaker$write_bytes <- writebytes
supervisor_pacemaker$num_fds <- numfds

write.csv(supervisor_pacemaker, file = "~/Desktop/test.csv",row.names=FALSE)
