package SemanticWeb::Schema::PlayAction;

# ABSTRACT: <p>The act of playing/exercising/training/performing for enjoyment

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of playing/exercising/training/performing for enjoyment,
leisure, recreation, Competition or exercise.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/ListenAction">ListenAction</a>: Unlike ListenAction
(which is under ConsumeAction), PlayAction refers to performing for an
audience or at an event, rather than consuming music.</li> <li><a
class="localLink" href="http://schema.org/WatchAction">WatchAction</a>:
Unlike WatchAction (which is under ConsumeAction), PlayAction refers to
showing/displaying for an audience or at an event, rather than consuming
visual content.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<audience>



An intended audience, i.e. a group for whom something was created.


A audience should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=back

=cut

has audience => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<event>



Upcoming or past event associated with this place, organization, or action.


A event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has event => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PlayAction' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'audience' => $self->curry::_serializer('audience'),
       'event' => $self->curry::_serializer('event'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
