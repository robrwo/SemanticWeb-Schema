use utf8;

package SemanticWeb::Schema::PublicationIssue;

# ABSTRACT: A part of a successively published publication such as a periodical or publication volume

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'PublicationIssue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A part of a successively published publication such as a periodical or
publication volume, often numbered, usually containing a grouping of works
such as articles. See also [blog
post](http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html).




=head1 ATTRIBUTES


=head2 C<issue_number>

C<issueNumber>

Identifies the issue of publication; for example, "iii" or "2".


A issue_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_issue_number>

A predicate for the L</issue_number> attribute.

=cut

has issue_number => (
    is        => 'rw',
    predicate => '_has_issue_number',
    json_ld   => 'issueNumber',
);


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_page_end>

A predicate for the L</page_end> attribute.

=cut

has page_end => (
    is        => 'rw',
    predicate => '_has_page_end',
    json_ld   => 'pageEnd',
);


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=head2 C<_has_page_start>

A predicate for the L</page_start> attribute.

=cut

has page_start => (
    is        => 'rw',
    predicate => '_has_page_start',
    json_ld   => 'pageStart',
);


=head2 C<pagination>



Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".


A pagination should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_pagination>

A predicate for the L</pagination> attribute.

=cut

has pagination => (
    is        => 'rw',
    predicate => '_has_pagination',
    json_ld   => 'pagination',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
