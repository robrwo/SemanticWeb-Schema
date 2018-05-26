package LDF::Schema::VoteAction;

# ABSTRACT: The act of expressing a preference from a fixed/finite/structured set of choices/options.

use Moo;

extends qw/ LDF::Schema::ChooseAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of expressing a preference from a fixed/finite/structured set of
choices/options.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<candidate>



A sub property of object. The candidate subject of this action.


A candidate should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has candidate => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'VoteAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { candidate => 'candidate' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::ChooseAction>

=cut

1;
