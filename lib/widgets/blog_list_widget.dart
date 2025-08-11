import 'package:flutter/material.dart';

final List<Map<String, String>> blogList = [
  {
    "title": "ঢাকায় বৃষ্টির সম্ভাবনা",
    "short_description": "আজ বিকেলে ঢাকায় মাঝারি থেকে ভারী বৃষ্টিপাত হতে পারে বলে জানিয়েছে আবহাওয়া অধিদপ্তর।",
    "image_url": "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=870&q=80"  // replaced image 1
  },
  {
    "title": "শেয়ারবাজারে বড় ধস",
    "short_description": "ঢাকা স্টক এক্সচেঞ্জে আজ সূচক বড় পতনের মুখে পড়েছে, বিনিয়োগকারীরা উদ্বিগ্ন।",
    "image_url": "https://images.unsplash.com/photo-1533750349088-cd871a92f312?auto=format&fit=crop&w=870&q=80" // new image
  },
  {
    "title": "চট্টগ্রাম বন্দরে জাহাজ জট",
    "short_description": "পণ্য খালাসে বিলম্ব হওয়ায় চট্টগ্রাম বন্দরে জাহাজ জট তৈরি হয়েছে।",
    "image_url": "https://images.unsplash.com/photo-1589927986089-35812388d1f4?auto=format&fit=crop&w=870&q=80"
  },
  {
    "title": "রাজশাহীতে আমের মৌসুম শুরু",
    "short_description": "রাজশাহীতে এবার আমের ফলন ভালো হয়েছে বলে জানিয়েছেন চাষিরা।",
    "image_url": "https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=870&q=80"  // replaced image 4
  },
  {
    "title": "শিক্ষাপ্রতিষ্ঠান বন্ধ ঘোষণা",
    "short_description": "তীব্র গরমের কারণে আগামী এক সপ্তাহ দেশের সব শিক্ষাপ্রতিষ্ঠান বন্ধ থাকবে।",
    "image_url": "https://images.unsplash.com/photo-1556761175-5973dc0f32e7?auto=format&fit=crop&w=870&q=80"  // replaced image 5
  },
  {
    "title": "পদ্মা সেতুতে যানবাহনের চাপ বৃদ্ধি",
    "short_description": "ছুটির দিনে পদ্মা সেতুতে যানবাহনের চাপ বেড়েছে, টোলপ্লাজায় দীর্ঘ লাইন।",
    "image_url": "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=870&q=80"  // replaced image 6
  },
  {
    "title": "সিলেটে বন্যা পরিস্থিতির অবনতি",
    "short_description": "অতিবৃষ্টির কারণে সিলেটে বন্যা পরিস্থিতি আরও খারাপ হয়েছে।",
    "image_url": "https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=870&q=80"
  },
  {
    "title": "বাংলাদেশের ক্রিকেটে নতুন মুখ",
    "short_description": "জাতীয় দলে সুযোগ পেয়েছেন তরুণ পেসার মেহেদী হাসান, যিনি ঘরোয়া ক্রিকেটে আলো ছড়িয়েছেন।",
    "image_url": "https://images.unsplash.com/photo-1521412644187-c49fa049e84d?auto=format&fit=crop&w=870&q=80"  // replaced image 8
  },
  {
    "title": "ঢাকায় ট্রাফিক জট",
    "short_description": "সকাল থেকেই ঢাকার বিভিন্ন সড়কে তীব্র যানজট, যাত্রীদের ভোগান্তি।",
    "image_url": "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?auto=format&fit=crop&w=870&q=80"  // replaced image 9
  },
  {
    "title": "নারায়ণগঞ্জে শিল্প কারখানায় অগ্নিকাণ্ড",
    "short_description": "নারায়ণগঞ্জে একটি পোশাক কারখানায় ভয়াবহ অগ্নিকাণ্ড, দমকল বাহিনী নিয়ন্ত্রণে কাজ করছে।",
    "image_url": "https://images.unsplash.com/photo-1464037866556-6812c9d1c72e?auto=format&fit=crop&w=870&q=80"  // replaced image 10
  },
];


class BlogListWidget extends StatelessWidget {
  const BlogListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            blogList.length,
                (index) => _buildBlogCard(blogList[index]),
          ),
        ),
      ),
    );
  }

  Widget _buildBlogCard(Map<String, String> blog) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      elevation: 4,
      child: Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              blog['title'] ?? '',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(blog['image_url'] ?? ''),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(height: 20),
            Text(blog['short_description'] ?? ''),
          ],
        ),
      ),
    );
  }
}
