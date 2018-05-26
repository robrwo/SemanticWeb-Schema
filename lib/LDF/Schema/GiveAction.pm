package LDF::Schema::GiveAction;

# ABSTRACT: <p>The act of transferring ownership of an object to a destination

use Moo;

extends qw/ LDF::Schema::TransferAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of transferring ownership of an object to a destination.
Reciprocal of TakeAction.</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/TakeAction">TakeAction</a>:
Reciprocal of GiveAction.</li> <li><a class="localLink"
href="http://schema.org/SendAction">SendAction</a>: Unlike SendAction,
GiveAction implies that ownership is being transferred (e.g. I may send my
laptop to you, but that doesn't mean I'm giving it to you).</li> </ul> 

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::ContactPoint']>

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Audience']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has recipient => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GiveAction' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { recipient => 'recipient' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::TransferAction>

=cut

1;
