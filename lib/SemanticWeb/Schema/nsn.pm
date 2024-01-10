use utf8;

package SemanticWeb::Schema::nsn;

# ABSTRACT: Indicates the [NATO stock number](https://en

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'nsn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the L<NATO stock number|https://en.wikipedia.org/wiki/NATO_Stock_Number> (nsn) of a L<SemanticWeb::Schema::Product>. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
