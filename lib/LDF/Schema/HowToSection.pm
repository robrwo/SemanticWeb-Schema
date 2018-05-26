package LDF::Schema::HowToSection;

# ABSTRACT: A sub-grouping of steps in the instructions for how to achieve a result (e

use Moo;

extends qw/ LDF::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A sub-grouping of steps in the instructions for how to achieve a result
(e.g. steps for making a pie crust within a pie recipe).



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<steps>



The steps in the form of a single item (text, document, video, etc.) or an
ordered list with HowToStep and/or HowToSection items.


A steps should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::CreativeWork']>

=item C<Str>

=item C<InstanceOf['LDF::Schema::ItemList']>

=back

=cut

has steps => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HowToSection' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { steps => 'steps' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::ItemList>

=cut

1;
