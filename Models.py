# models.py

class Category:
    def __init__(self, category_id, name, description=""):
        self.category_id = category_id
        self.name = name
        self.description = description
        self.attributes = []

    def add_attribute(self, attribute):
        self.attributes.append(attribute)


class Attribute:
    def __init__(self, attribute_id, category_id, name, datatype="string"):
        self.attribute_id = attribute_id
        self.category_id = category_id
        self.name = name
        self.datatype = datatype


class Product:
    def __init__(self, product_id, category, name, price=0.0):
        self.product_id = product_id
        self.category = category
        self.name = name
        self.price = price
        self.attribute_values = {}

    def set_attribute_value(self, attribute, value):
        if attribute.category_id != self.category.category_id:
            raise ValueError("Attribute does not belong to this product's category")
        self.attribute_values[attribute.name] = value

    def __str__(self):
        return f"Product({self.name}, {self.category.name}, {self.price}, {self.attribute_values})"
