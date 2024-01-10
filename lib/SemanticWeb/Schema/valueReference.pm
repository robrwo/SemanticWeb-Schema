use utf8;

package SemanticWeb::Schema::valueReference;

# ABSTRACT: A secondary value that provides additional information on the original value

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valueReference';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A secondary value that provides additional information on the original
value, e.g. a reference temperature or a type of measurement.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
