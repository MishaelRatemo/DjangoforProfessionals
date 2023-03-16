from django.test import SimpleTestCase
from django.urls import reverse

class HomepageTests(SimpleTestCase):
    def setUp(self): # new
        url = reverse("home")
        self.response = self.client.get(url)

    def test_url_exists_at_correct_location(self):
        # response = self.client.get("/")
        self.assertEqual(self.response.status_code, 200)

    # def test_homepage_url_name(self):
    #     # response = self.client.get(reverse("home"))
    #     self.assertEqual(self.response.status_code, 200)

    #testing templatess - home.html
    def test_homepage_template(self): # new
        # response = self.client.get("/")
        self.assertTemplateUsed(self.response, "home.html")

    # testing correct HTML
    def test_homepage_does_not_contain_incorrect_html(self):
        # response = self.client.get('/')
        self.assertNotContains(self.response, "Hello, Am not supposed to be here, Something is wrong!!")

    def test_homepage_contains_correct_html(self):
        # resp =self.client.get('/')
        self.assertContains(self.response, "home page")
