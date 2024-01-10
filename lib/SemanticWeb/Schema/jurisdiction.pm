use utf8;

package SemanticWeb::Schema::jurisdiction;

# ABSTRACT: Indicates a legal jurisdiction, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'jurisdiction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a legal jurisdiction, e.g. of some legislation, or where some
government service is based.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
