use utf8;

package SemanticWeb::Schema::result;

# ABSTRACT: The result produced in the action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'result';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The result produced in the action. E.g. John wrote *a book*.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
