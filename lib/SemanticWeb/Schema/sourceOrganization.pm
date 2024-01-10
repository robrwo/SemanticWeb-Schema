use utf8;

package SemanticWeb::Schema::sourceOrganization;

# ABSTRACT: The Organization on whose behalf the creator was working.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sourceOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Organization on whose behalf the creator was working.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
