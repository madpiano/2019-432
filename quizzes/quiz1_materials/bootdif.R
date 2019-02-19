`bootdif` <-
    function(y, g, conf.level=0.95, B.reps = 2000) {
        require(Hmisc)
        lowq = (1 - conf.level)/2
        g <- as.factor(g)
        a <- attr(smean.cl.boot(y[g==levels(g)[1]], B=B.reps, reps=TRUE),'reps')
        b <- attr(smean.cl.boot(y[g==levels(g)[2]], B=B.reps, reps=TRUE),'reps')
        meandif <- diff(tapply(y, g, mean, na.rm=TRUE))
        a.b <- quantile(b-a, c(lowq,1-lowq))
        res <- c(meandif, a.b)
        names(res) <- c('Mean Difference',lowq, 1-lowq)
        res
    }
