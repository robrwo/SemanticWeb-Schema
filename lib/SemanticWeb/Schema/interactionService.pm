use utf8;

package SemanticWeb::Schema::interactionService;

# ABSTRACT: The WebSite or SoftwareApplication where the interactions took place.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'interactionService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The WebSite or SoftwareApplication where the interactions took place.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
