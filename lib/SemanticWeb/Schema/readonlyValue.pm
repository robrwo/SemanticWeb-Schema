use utf8;

package SemanticWeb::Schema::readonlyValue;

# ABSTRACT: Whether or not a property is mutable

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'readonlyValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether or not a property is mutable. Default is false. Specifying this for
a property that also has a value makes it act similar to a "hidden" input
in an HTML form.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
