use utf8;

package SemanticWeb::Schema::actionApplication;

# ABSTRACT: An application that can complete the request.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'actionApplication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An application that can complete the request.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
