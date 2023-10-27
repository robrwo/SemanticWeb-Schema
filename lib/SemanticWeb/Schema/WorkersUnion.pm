use utf8;

package SemanticWeb::Schema::WorkersUnion;

# ABSTRACT: A Workers Union (also known as a Labor Union

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'WorkersUnion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A Workers Union (also known as a Labor Union, Labour Union, or Trade Union)
is an organization that promotes the interests of its worker members by
collectively bargaining with management, organizing, and political
lobbying.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
