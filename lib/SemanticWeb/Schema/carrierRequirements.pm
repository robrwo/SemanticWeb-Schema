use utf8;

package SemanticWeb::Schema::carrierRequirements;

# ABSTRACT: Specifies specific carrier(s) requirements for the application (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'carrierRequirements';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Specifies specific carrier(s) requirements for the application (e.g. an
application may only work on a specific carrier network).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
