document
    .querySelectorAll('a')
    .forEach(element => { 
        element
            .getAttributeNames()
            .forEach(attributeName => { 
                if (attributeName.indexOf("data-") >= 0) {
                    element.removeAttribute(attributeName)
                }
            })
        element.removeAttribute("ping")
    })