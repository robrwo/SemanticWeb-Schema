use utf8;

package SemanticWeb::Schema::Intangible;

# ABSTRACT: A utility class that serves as the umbrella for a number of 'intangible' things such as quantities

use Moo;

extends qw/ SemanticWeb::Schema::Thing /;


use MooX::JSON_LD 'Intangible';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.0';

=encoding utf8

=head1 DESCRIPTION

A utility class that serves as the umbrella for a number of 'intangible'
things such as quantities, structured values, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Thing>

=cut

1;
