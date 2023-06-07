conf =function(x) { #x is a dataframe
  r <- c(min(x), 
         mean(x) - qt(1 - (0.05 / 2), length(x) - 1) * (sd(x)/sqrt(length(x)) ),
         mean(x), 
         mean(x) + qt(1 - (0.05 / 2), length(x) - 1) * (sd(x)/sqrt(length(x)) ),
         max(x))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}

conf2 =function(x) { #x is a dataframe
  r <- c(mean(x) - qt(1 - (0.05 / 2), length(x) - 1) * (sd(x)/sqrt(length(x)) ),
         mean(x)-sd(x),
         mean(x),
         mean(x)+sd(x), 
         mean(x) + qt(1 - (0.05 / 2), length(x) - 1) * (sd(x)/sqrt(length(x)) ))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}

conf3 =function(x) { #x is a dataframe
  r <- c(mean(x) - sd(x),
         mean(x)-sd(x),
         mean(x),
         mean(x)+sd(x), 
         mean(x) + sd(x))
  names(r) <- c("ymin", "lower", "middle", "upper", "ymax")
  r
}
