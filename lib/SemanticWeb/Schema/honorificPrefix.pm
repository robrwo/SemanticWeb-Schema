use utf8;

package SemanticWeb::Schema::honorificPrefix;

# ABSTRACT: An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'honorificPrefix';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
