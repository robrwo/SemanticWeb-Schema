use utf8;

package SemanticWeb::Schema::PerformAction;

# ABSTRACT: The act of participating in performance arts.

use Moo;

extends qw/ SemanticWeb::Schema::PlayAction /;


use MooX::JSON_LD 'PerformAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v10.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of participating in performance arts.




=head1 ATTRIBUTES


=head2 C<entertainment_business>

C<entertainmentBusiness>

A sub property of location. The entertainment business where the action
occurred.


A entertainment_business should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::EntertainmentBusiness']>

=back

=head2 C<_has_entertainment_business>

A predicate for the L</entertainment_business> attribute.

=cut

has entertainment_business => (
    is        => 'rw',
    predicate => '_has_entertainment_business',
    json_ld   => 'entertainmentBusiness',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PlayAction>

=cut

1;
