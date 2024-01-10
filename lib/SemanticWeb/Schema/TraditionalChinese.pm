use utf8;

package SemanticWeb::Schema::TraditionalChinese;

# ABSTRACT: A system of medicine based on common theoretical concepts that originated in China and evolved over thousands of years

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TraditionalChinese';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A system of medicine based on common theoretical concepts that originated
in China and evolved over thousands of years, that uses herbs, acupuncture,
exercise, massage, dietary therapy, and other methods to treat a wide range
of conditions.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
