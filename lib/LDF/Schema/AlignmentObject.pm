package LDF::Schema::AlignmentObject;

# ABSTRACT: An intangible item that describes an alignment between a learning resource and a node in an educational framework.

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An intangible item that describes an alignment between a learning resource
and a node in an educational framework.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<alignment_type>

C<alignmentType>

A category of alignment between the learning resource and the framework
node. Recommended values include: 'assesses', 'teaches', 'requires',
'textComplexity', 'readingLevel', 'educationalSubject', and
'educationalLevel'.


A alignment_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has alignment_type => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<educational_framework>

C<educationalFramework>

The framework to which the resource being described is aligned.


A educational_framework should be one of the following types:

=over

=item C<Str>

=back

=cut

has educational_framework => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<target_description>

C<targetDescription>

The description of a node in an established educational framework.


A target_description should be one of the following types:

=over

=item C<Str>

=back

=cut

has target_description => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<target_name>

C<targetName>

The name of a node in an established educational framework.


A target_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has target_name => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<target_url>

C<targetUrl>

The URL of a node in an established educational framework.


A target_url should be one of the following types:

=over

=item C<Str>

=back

=cut

has target_url => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AlignmentObject' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { alignmentType => 'alignment_type' },
      { educationalFramework => 'educational_framework' },
      { targetDescription => 'target_description' },
      { targetName => 'target_name' },
      { targetUrl => 'target_url' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
