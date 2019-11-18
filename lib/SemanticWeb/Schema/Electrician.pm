use utf8;

package SemanticWeb::Schema::Electrician;

# ABSTRACT: An electrician.

use Moo;

extends qw/ SemanticWeb::Schema::HomeAndConstructionBusiness /;


use MooX::JSON_LD 'Electrician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.2';

=encoding utf8

=head1 DESCRIPTION

An electrician.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HomeAndConstructionBusiness>

=cut

1;
