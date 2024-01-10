use utf8;

package SemanticWeb::Schema::cholesterolContent;

# ABSTRACT: The number of milligrams of cholesterol.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cholesterolContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of milligrams of cholesterol.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
