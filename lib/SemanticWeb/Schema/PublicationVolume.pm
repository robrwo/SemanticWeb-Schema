use utf8;

package SemanticWeb::Schema::PublicationVolume;

# ABSTRACT: A part of a successively published publication such as a periodical or multi-volume work

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'PublicationVolume';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

=begin html

A part of a successively published publication such as a periodical or
multi-volume work, often numbered. It may represent a time span, such as a
year.<br/><br/> <pre><code> &lt;br/&gt;&lt;br/&gt;See also &lt;a
href="http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html"&gt;blog post&lt;/a&gt;. </code></pre> 

=end html




=head1 ATTRIBUTES


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has page_end => (
    is        => 'rw',
    predicate => 1,
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

=cut

has page_start => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pageStart',
);


=head2 C<pagination>



Any description of pages that is not separated into pageStart and pageEnd;
for example, "1-6, 9, 55" or "10-12, 46-49".


A pagination should be one of the following types:

=over

=item C<Str>

=back

=cut

has pagination => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pagination',
);


=head2 C<volume_number>

C<volumeNumber>

Identifies the volume of publication or multi-part work; for example, "iii"
or "2".


A volume_number should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=item C<Str>

=back

=cut

has volume_number => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'volumeNumber',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
