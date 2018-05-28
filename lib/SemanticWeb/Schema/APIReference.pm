package SemanticWeb::Schema::APIReference;

# ABSTRACT: Reference documentation for application programming interfaces (APIs).

use Moo;

extends qw/ SemanticWeb::Schema::TechArticle /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Reference documentation for application programming interfaces (APIs).




=head1 ATTRIBUTES


=head2 C<assembly>



Library file name e.g., mscorlib.dll, system.web.dll.


A assembly should be one of the following types:

=over

=item C<Str>

=back

=cut

has assembly => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'assembly',
    json_ld_serializer => \&_serialize_assembly,
);

sub _serialize_assembly { $_[0]->_serializer('assembly') }


=head2 C<assembly_version>

C<assemblyVersion>

Associated product/technology version. e.g., .NET Framework 4.5.


A assembly_version should be one of the following types:

=over

=item C<Str>

=back

=cut

has assembly_version => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'assemblyVersion',
    json_ld_serializer => \&_serialize_assembly_version,
);

sub _serialize_assembly_version { $_[0]->_serializer('assembly_version') }


=head2 C<executable_library_name>

C<executableLibraryName>

Library file name e.g., mscorlib.dll, system.web.dll.


A executable_library_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has executable_library_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'executableLibraryName',
    json_ld_serializer => \&_serialize_executable_library_name,
);

sub _serialize_executable_library_name { $_[0]->_serializer('executable_library_name') }


=head2 C<programming_model>

C<programmingModel>

Indicates whether API is managed or unmanaged.


A programming_model should be one of the following types:

=over

=item C<Str>

=back

=cut

has programming_model => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'programmingModel',
    json_ld_serializer => \&_serialize_programming_model,
);

sub _serialize_programming_model { $_[0]->_serializer('programming_model') }


=head2 C<target_platform>

C<targetPlatform>

Type of app development: phone, Metro style, desktop, XBox, etc.


A target_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has target_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'targetPlatform',
    json_ld_serializer => \&_serialize_target_platform,
);

sub _serialize_target_platform { $_[0]->_serializer('target_platform') }




around json_ld_type => sub { return 'APIReference' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'assembly' => \&_serialize_assembly,
       'assemblyVersion' => \&_serialize_assembly_version,
       'executableLibraryName' => \&_serialize_executable_library_name,
       'programmingModel' => \&_serialize_programming_model,
       'targetPlatform' => \&_serialize_target_platform,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::TechArticle>

=cut

1;
