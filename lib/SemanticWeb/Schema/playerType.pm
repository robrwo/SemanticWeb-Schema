use utf8;

package SemanticWeb::Schema::playerType;

# ABSTRACT: Player type required—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'playerType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Player type required&#x2014;for example, Flash or Silverlight.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
