package com.example.cgv.ui.main

import android.content.Context
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentManager
import androidx.fragment.app.FragmentPagerAdapter
import com.example.cgv.R

private val TAB_TITLES = arrayOf(
    R.string.tab_title_home,
    R.string.tab_title_event,
    R.string.tab_title_store,
    R.string.tab_title_playzone,
    R.string.tab_title_my
)

/**
 * A [FragmentPagerAdapter] that returns a fragment corresponding to
 * one of the sections/tabs/pages.
 */
class SectionsPagerAdapter(private val context: Context, fm: FragmentManager)
    : FragmentPagerAdapter(fm) {

    override fun getItem(position: Int): Fragment? {
        // getItem is called to instantiate the fragment for the given page.
        // Return a PlaceholderFragment (defined as a static inner class below).
        when(position) {
            0 -> {
                return HomeFragment()
            }
            1 -> {
                return EventFragment()
            }
            2 -> {
                return StoreFragment()
            }
            3 -> {
                return PlayzoneFragment()
            }
            4 -> {
                return MyFragment()
            }
            else -> return null
        }
    }

    override fun getPageTitle(position: Int): CharSequence? {
        return context.resources.getString(TAB_TITLES[position])
    }

    override fun getCount(): Int {
        // Show 5 total pages.
        return 5
    }
}