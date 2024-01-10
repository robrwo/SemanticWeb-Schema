use utf8;

package SemanticWeb::Schema::textValue;

# ABSTRACT: Text value being annotated.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'textValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Text value being annotated.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
