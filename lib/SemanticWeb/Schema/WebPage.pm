use utf8;

package SemanticWeb::Schema::WebPage;

# ABSTRACT: A web page

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'WebPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A web page. Every web page is implicitly assumed to be declared to be of
type WebPage, so the various properties about that webpage, such as
<code>breadcrumb</code> may be used. We recommend explicit declaration if
these properties are specified, but if they are found outside of an
itemscope, they will be assumed to be about the page.</p>

=end html




=head1 ATTRIBUTES


=head2 C<breadcrumb>



A set of links that can help a user understand and navigate a website
hierarchy.


A breadcrumb should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BreadcrumbList']>

=item C<Str>

=back

=head2 C<_has_breadcrumb>

A predicate for the L</breadcrumb> attribute.

=cut

has breadcrumb => (
    is        => 'rw',
    predicate => '_has_breadcrumb',
    json_ld   => 'breadcrumb',
);


=head2 C<last_reviewed>

C<lastReviewed>

Date on which the content on this web page was last reviewed for accuracy
and/or completeness.


A last_reviewed should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_last_reviewed>

A predicate for the L</last_reviewed> attribute.

=cut

has last_reviewed => (
    is        => 'rw',
    predicate => '_has_last_reviewed',
    json_ld   => 'lastReviewed',
);


=head2 C<main_content_of_page>

C<mainContentOfPage>

Indicates if this web page element is the main subject of the page.


A main_content_of_page should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WebPageElement']>

=back

=head2 C<_has_main_content_of_page>

A predicate for the L</main_content_of_page> attribute.

=cut

has main_content_of_page => (
    is        => 'rw',
    predicate => '_has_main_content_of_page',
    json_ld   => 'mainContentOfPage',
);


=head2 C<primary_image_of_page>

C<primaryImageOfPage>

Indicates the main image on the page.


A primary_image_of_page should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ImageObject']>

=back

=head2 C<_has_primary_image_of_page>

A predicate for the L</primary_image_of_page> attribute.

=cut

has primary_image_of_page => (
    is        => 'rw',
    predicate => '_has_primary_image_of_page',
    json_ld   => 'primaryImageOfPage',
);


=head2 C<related_link>

C<relatedLink>

A link related to this web page, for example to other related web pages.


A related_link should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_related_link>

A predicate for the L</related_link> attribute.

=cut

has related_link => (
    is        => 'rw',
    predicate => '_has_related_link',
    json_ld   => 'relatedLink',
);


=head2 C<reviewed_by>

C<reviewedBy>

People or organizations that have reviewed the content on this web page for
accuracy and/or completeness.


A reviewed_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_reviewed_by>

A predicate for the L</reviewed_by> attribute.

=cut

has reviewed_by => (
    is        => 'rw',
    predicate => '_has_reviewed_by',
    json_ld   => 'reviewedBy',
);


=head2 C<significant_link>

C<significantLink>

One of the more significant URLs on the page. Typically, these are the
non-navigation links that are clicked on the most.


A significant_link should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_significant_link>

A predicate for the L</significant_link> attribute.

=cut

has significant_link => (
    is        => 'rw',
    predicate => '_has_significant_link',
    json_ld   => 'significantLink',
);


=head2 C<significant_links>

C<significantLinks>

The most significant URLs on the page. Typically, these are the
non-navigation links that are clicked on the most.


A significant_links should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_significant_links>

A predicate for the L</significant_links> attribute.

=cut

has significant_links => (
    is        => 'rw',
    predicate => '_has_significant_links',
    json_ld   => 'significantLinks',
);


=head2 C<speakable>



Indicates sections of a Web page that are particularly 'speakable' in the sense of being highlighted as being especially appropriate for text-to-speech conversion. Other sections of a page may also be usefully spoken in particular circumstances; the 'speakable' property serves to indicate the parts most likely to be generally useful for speech.

The I<speakable> property can be repeated an arbitrary number of times, with three kinds of possible 'content-locator' values:

1.) I<id-value> URL references - uses I<id-value> of an element in the page being annotated. The simplest use of I<speakable> has (potentially relative) URL values, referencing identified sections of the document concerned.

2.) CSS Selectors - addresses content in the annotated page, eg. via class attribute. Use the [[cssSelector]] property.

3.)  XPaths - addresses content via XPaths (assuming an XML view of the content). Use the [[xpath]] property.

For more sophisticated markup of speakable sections beyond simple ID references, either CSS selectors or XPath expressions to pick out document section(s) as speakable. For this
we define a supporting type, L<SemanticWeb::Schema::SpeakableSpecification>  which is defined to be a possible value of the I<speakable> property.

A speakable should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SpeakableSpecification']>

=item C<Str>

=back

=head2 C<_has_speakable>

A predicate for the L</speakable> attribute.

=cut

has speakable => (
    is        => 'rw',
    predicate => '_has_speakable',
    json_ld   => 'speakable',
);


=head2 C<specialty>



One of the domain specialities to which this web page's content applies.


A specialty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Specialty']>

=back

=head2 C<_has_specialty>

A predicate for the L</specialty> attribute.

=cut

has specialty => (
    is        => 'rw',
    predicate => '_has_specialty',
    json_ld   => 'specialty',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
