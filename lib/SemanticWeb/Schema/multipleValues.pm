use utf8;

package SemanticWeb::Schema::multipleValues;

# ABSTRACT: Whether multiple values are allowed for the property

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'multipleValues';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether multiple values are allowed for the property. Default is false.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
