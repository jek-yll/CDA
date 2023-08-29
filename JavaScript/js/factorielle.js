function factorielle(nb) {
    if (nb == 0){
        return 1;
    } else {
        return nb * factorielle(nb-1)
    }
}

