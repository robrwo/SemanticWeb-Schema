use utf8;

package SemanticWeb::Schema::Chiropractic;

# ABSTRACT: A system of medicine focused on the relationship between the body's structure

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Chiropractic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A system of medicine focused on the relationship between the body's
structure, mainly the spine, and its functioning.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
