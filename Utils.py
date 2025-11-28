class Utils:
    def most_frequent(arr):
        frequencies = []
        for element in set(arr):
            frequencies.append({
                "experience": element,
                "count": arr.count(element)
            })
        sorted_frequencies = sorted(frequencies, key=lambda x: x['count'], reverse=True)
        return [item["experience"] for item in sorted_frequencies]