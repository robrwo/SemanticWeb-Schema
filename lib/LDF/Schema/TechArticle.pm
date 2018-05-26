package LDF::Schema::TechArticle;

# ABSTRACT: A technical article - Example: How-to (task) topics

use Moo;

extends qw/ LDF::Schema::Article /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A technical article - Example: How-to (task) topics, step-by-step,
procedural troubleshooting, specifications, etc.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<dependencies>



Prerequisites needed to fulfill steps in article.


A dependencies should be one of the following types:

=over

=item C<Str>

=back

=cut

has dependencies => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<proficiency_level>

C<proficiencyLevel>

Proficiency needed for this content; expected values: 'Beginner', 'Expert'.


A proficiency_level should be one of the following types:

=over

=item C<Str>

=back

=cut

has proficiency_level => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TechArticle' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { dependencies => 'dependencies' },
      { proficiencyLevel => 'proficiency_level' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Article>

=cut

1;
