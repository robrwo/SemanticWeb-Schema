package LDF::Schema::PublicationVolume;

# ABSTRACT: <p>A part of a successively published publication such as a periodical or multi-volume work

use Moo;

extends qw/ LDF::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>A part of a successively published publication such as a periodical or
multi-volume work, often numbered. It may represent a time span, such as a
year.</p> <pre><code> &lt;br/&gt;&lt;br/&gt;See also &lt;a
href="http://blog.schema.org/2014/09/schemaorg-support-for-bibliographic_2.
html"&gt;blog post&lt;/a&gt;. </code></pre> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<page_end>

C<pageEnd>

The page on which the work ends; for example "138" or "xvi".


A page_end should be one of the following types:

=over

=item C<Str>

=item C<InstanceOf['LDF::Schema::Integer']>

=back

=cut

has page_end => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<page_start>

C<pageStart>

The page on which the work starts; for example "135" or "xiii".


A page_start should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=item C<Str>

=back

=cut

has page_start => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<volume_number>

C<volumeNumber>

Identifies the volume of publication or multi-part work; for example, "iii"
or "2".


A volume_number should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Integer']>

=item C<Str>

=back

=cut

has volume_number => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PublicationVolume' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { pageEnd => 'page_end' },
      { pageStart => 'page_start' },
      { pagination => 'pagination' },
      { volumeNumber => 'volume_number' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::CreativeWork>

=cut

1;
