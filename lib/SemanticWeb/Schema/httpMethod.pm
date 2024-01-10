use utf8;

package SemanticWeb::Schema::httpMethod;

# ABSTRACT: An HTTP method that specifies the appropriate HTTP method for a request to an HTTP EntryPoint

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'httpMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An HTTP method that specifies the appropriate HTTP method for a request to
an HTTP EntryPoint. Values are capitalized strings as used in HTTP.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
