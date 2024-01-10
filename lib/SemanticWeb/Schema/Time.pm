use utf8;

package SemanticWeb::Schema::Time;

# ABSTRACT: A point in time recurring on multiple days in the form hh:mm:ss[Z|(+|-)hh:mm] (see [XML schema for details](http://www

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Time';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A point in time recurring on multiple days in the form
hh:mm:ss[Z|(+|-)hh:mm] (see [XML schema for
details](http://www.w3.org/TR/xmlschema-2/#time)).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
