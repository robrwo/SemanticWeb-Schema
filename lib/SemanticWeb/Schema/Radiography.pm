use utf8;

package SemanticWeb::Schema::Radiography;

# ABSTRACT: Radiography is an imaging technique that uses electromagnetic radiation other than visible light

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Radiography';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Radiography is an imaging technique that uses electromagnetic radiation
other than visible light, especially X-rays, to view the internal structure
of a non-uniformly composed and opaque object such as the human body.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
