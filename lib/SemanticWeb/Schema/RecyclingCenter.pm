use utf8;

package SemanticWeb::Schema::RecyclingCenter;

# ABSTRACT: A recycling center.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use MooX::JSON_LD 'RecyclingCenter';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A recycling center.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
