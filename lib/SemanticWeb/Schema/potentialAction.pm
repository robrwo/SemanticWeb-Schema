use utf8;

package SemanticWeb::Schema::potentialAction;

# ABSTRACT: Indicates a potential Action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'potentialAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a potential Action, which describes an idealized action in which
this thing would play an 'object' role.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
