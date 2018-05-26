package LDF::Schema::WebPage;

# ABSTRACT: A web page

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A web page. Every web page is implicitly assumed to be declared to be of
type WebPage, so the various properties about that webpage, such as
<code>breadcrumb</code> may be used. We recommend explicit declaration if
these properties are specified, but if they are found outside of an
itemscope, they will be assumed to be about the page.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<breadcrumb>



A set of links that can help a user understand and navigate a website
hierarchy.


A breadcrumb should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BreadcrumbList']>

=item C<Str>

=back

=cut

has breadcrumb => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<last_reviewed>

C<lastReviewed>

Date on which the content on this web page was last reviewed for accuracy
and/or completeness.


A last_reviewed should be one of the following types:

=over

=item C<Str>

=back

=cut

has last_reviewed => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<main_content_of_page>

C<mainContentOfPage>

Indicates if this web page element is the main subject of the page.


A main_content_of_page should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::WebPageElement']>

=back

=cut

has main_content_of_page => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<primary_image_of_page>

C<primaryImageOfPage>

Indicates the main image on the page.


A primary_image_of_page should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ImageObject']>

=back

=cut

has primary_image_of_page => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<related_link>

C<relatedLink>

A link related to this web page, for example to other related web pages.


A related_link should be one of the following types:

=over

=item C<Str>

=back

=cut

has related_link => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<reviewed_by>

C<reviewedBy>

People or organizations that have reviewed the content on this web page for
accuracy and/or completeness.


A reviewed_by should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=item C<InstanceOf['LDF::Schema::Organization']>

=back

=cut

has reviewed_by => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<significant_link>

C<significantLink>

One of the more significant URLs on the page. Typically, these are the
non-navigation links that are clicked on the most.


A significant_link should be one of the following types:

=over

=item C<Str>

=back

=cut

has significant_link => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<significant_links>

C<significantLinks>

The most significant URLs on the page. Typically, these are the
non-navigation links that are clicked on the most.


A significant_links should be one of the following types:

=over

=item C<Str>

=back

=cut

has significant_links => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<specialty>



One of the domain specialities to which this web page's content applies.


A specialty should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Specialty']>

=back

=cut

has specialty => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'WebPage' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { breadcrumb => 'breadcrumb' },
      { lastReviewed => 'last_reviewed' },
      { mainContentOfPage => 'main_content_of_page' },
      { primaryImageOfPage => 'primary_image_of_page' },
      { relatedLink => 'related_link' },
      { reviewedBy => 'reviewed_by' },
      { significantLink => 'significant_link' },
      { significantLinks => 'significant_links' },
      { specialty => 'specialty' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
