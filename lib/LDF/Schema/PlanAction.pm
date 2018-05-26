package LDF::Schema::PlanAction;

# ABSTRACT: The act of planning the execution of an event/task/action/reservation/plan to a future date.

use Moo;

extends qw/ LDF::Schema::OrganizeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of planning the execution of an event/task/action/reservation/plan
to a future date.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<scheduled_time>

C<scheduledTime>

The time the object is scheduled to.


A scheduled_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has scheduled_time => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PlanAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { scheduledTime => 'scheduled_time' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::OrganizeAction>

=cut

1;
