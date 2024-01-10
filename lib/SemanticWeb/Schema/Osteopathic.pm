use utf8;

package SemanticWeb::Schema::Osteopathic;

# ABSTRACT: A system of medicine focused on promoting the body's innate ability to heal itself.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Osteopathic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A system of medicine focused on promoting the body's innate ability to heal
itself.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
