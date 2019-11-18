use utf8;

package SemanticWeb::Schema::TelevisionStation;

# ABSTRACT: A television station.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'TelevisionStation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

A television station.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
