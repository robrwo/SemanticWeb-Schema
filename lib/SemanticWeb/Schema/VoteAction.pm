use utf8;

package SemanticWeb::Schema::VoteAction;

# ABSTRACT: The act of expressing a preference from a fixed/finite/structured set of choices/options.

use Moo;

extends qw/ SemanticWeb::Schema::ChooseAction /;


use MooX::JSON_LD 'VoteAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of expressing a preference from a fixed/finite/structured set of
choices/options.




=head1 ATTRIBUTES


=head2 C<candidate>



A sub property of object. The candidate subject of this action.


A candidate should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_candidate>

A predicate for the L</candidate> attribute.

=cut

has candidate => (
    is        => 'rw',
    predicate => '_has_candidate',
    json_ld   => 'candidate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ChooseAction>

=cut

1;
