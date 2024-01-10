use utf8;

package SemanticWeb::Schema::codeValue;

# ABSTRACT: A short textual code that uniquely identifies the value.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'codeValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A short textual code that uniquely identifies the value.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
