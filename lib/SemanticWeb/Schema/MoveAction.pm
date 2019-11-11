use utf8;

package SemanticWeb::Schema::MoveAction;

# ABSTRACT: The act of an agent relocating to a place

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'MoveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>The act of an agent relocating to a place.<br/><br/> Related
actions:<br/><br/> <ul> <li><a class="localLink"
href="http://schema.org/TransferAction">TransferAction</a>: Unlike
TransferAction, the subject of the move is a living Person or Organization
rather than an inanimate object.</li> </ul> <p>

=end html




=head1 ATTRIBUTES


=head2 C<from_location>

C<fromLocation>

A sub property of location. The original location of the object or the
agent before the action.


A from_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has from_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'fromLocation',
);


=head2 C<to_location>

C<toLocation>

A sub property of location. The final location of the object or the agent
after the action.


A to_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Place']>

=back

=cut

has to_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'toLocation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
