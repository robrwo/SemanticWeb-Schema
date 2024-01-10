use utf8;

package SemanticWeb::Schema::drugClass;

# ABSTRACT: The class of drug this belongs to (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'drugClass';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The class of drug this belongs to (e.g., statins).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
