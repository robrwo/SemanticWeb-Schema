use utf8;

package SemanticWeb::Schema::valueName;

# ABSTRACT: Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'valueName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the name of the PropertyValueSpecification to be used in URL
templates and form encoding in a manner analogous to HTML's input@name.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
