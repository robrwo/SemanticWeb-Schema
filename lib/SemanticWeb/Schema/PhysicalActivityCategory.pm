use utf8;

package SemanticWeb::Schema::PhysicalActivityCategory;

# ABSTRACT: Categories of physical activity

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'PhysicalActivityCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.2';

=encoding utf8

=head1 DESCRIPTION

Categories of physical activity, organized by physiologic classification.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
